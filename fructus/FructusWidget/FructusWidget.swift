//
//  FructusWidget.swift
//  FructusWidget
//
//  Created by Ana Thayna Franca on 24/07/20.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
     public typealias Entry = SimpleEntry

     public func snapshot(with context: Context, completion: @escaping (SimpleEntry) -> ()) {
         let entry = SimpleEntry(date: Date())
         completion(entry)
     }

     public func timeline(with context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
         var entries: [SimpleEntry] = []

         let currentDate = Date()
         for hourOffset in 0 ..< 5 {
             let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
             let entry = SimpleEntry(date: entryDate)
             entries.append(entry)
         }

         let timeline = Timeline(entries: entries, policy: .atEnd)
         completion(timeline)
     }
 }

 struct SimpleEntry: TimelineEntry {
     public let date: Date
 }

 struct PlaceholderView : View {
     var body: some View {
         Text("placeholder view")
     }
 }

 struct FructusWidgetEntryView : View {
    @Environment(\.widgetFamily) private var widgetFamily
    
     var body: some View {
        ZStack {
            VStack(spacing: 5) {
                if widgetFamily == .systemMedium {
                    Text("medium preview!")
                        .foregroundColor(.white)
                } else if widgetFamily == .systemLarge  {
                    Text("large preview!")
                        .foregroundColor(.white)
                }
                
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0), radius: 8, x: 6, y: 8)
                
                Text("blueberry")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                    .fontWeight(.heavy).shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(5)
     }
 }

 @main
 struct FructusWidget: Widget {
     private let kind: String = "FructusWidget"

     public var body: some WidgetConfiguration {
         StaticConfiguration(kind: kind, provider: Provider(), placeholder: PlaceholderView()) { entry in
             FructusWidgetEntryView()
         }
         .configurationDisplayName("Fructus Widget")
         .description("this is an fructus widget.")
     }
 }

 struct FructusWidget_PreviewsSmall: PreviewProvider {
     static var previews: some View {
        FructusWidgetEntryView()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
     }
 }

struct FructusWidget_PreviewsMedium: PreviewProvider {
    static var previews: some View {
        FructusWidgetEntryView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}

struct FructusWidget_PreviewsLarge: PreviewProvider {
    static var previews: some View {
        FructusWidgetEntryView()
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
