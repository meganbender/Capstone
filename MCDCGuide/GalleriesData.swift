//
//  GalleriesData.swift
//  MCDCGuide
//

import SwiftUI

class GalleryDataController: ObservableObject {
    
    // lower level galleries
    let LLGalleries: [GalleryItem] = [
        GalleryItem(
            title: "Water Floor",
            label: "water",
            description: "Our Water Flow Gallery allows children and families to engage in splashy water adventures throughout the five different interactive water stations.\n\n\tThese stations explore whirlpools, waterways, fountains, stream dynamics, and more!",
            imageName: "waterGal",
            url: "https://www.magiccitydiscoverycenter.com/waterflow",
            funFact: "Water CAN flow uphill! This happens in narrow spaces due to capillary action!",
            color: .mcdcBlue
            ),
        
        GalleryItem(
            title: "Creativity Studio",
            label: "creativity",
            description: "Creativity Studio is a vibrant arts space where visitors of all ages explore open-ended artistic expression and creative problem-solving through STEAM-based activities.\n\n\tThe studio encourages fearless creativity and focuses on the process of making art rather than the final product!",
            imageName: "creativityGal",
            url: "https://www.magiccitydiscoverycenter.com/creativitystudio",
            funFact: "Did you know Leonardo da Vinci could draw with one hand while writing with the other... at the same time!",
            color: .mcdcBlue)
    ]
    
    
    // level one galleries
    let L1Galleries: [GalleryItem] = [
        GalleryItem(
            title: "Air Forces",
            label: "air",
            description: "Experience the power of air in the Air Forces Gallery through interactive exhibits that bring wind and air energy to life. \n\n\tVisitors explore the physics of moving air by experimenting with objects of all sizes and following the scientific process!",
            imageName: "airforcesGal",
            url: "https://www.magiccitydiscoverycenter.com/airforcesgallery",
            funFact: "Air is about 78% nitrogen, 21% oxygen, and 1% of other stuff such as carbon dioxide, neon, and hydrogen!",
            color: .mcdcGreen),
        
        GalleryItem(
            title: "Outside My Window",
            label: "omw",
            description: "The Outside My Window Gallery celebrates North Dakota's outdoors with hands-on, age-appropriate activities for children seven and younger. \n\n\tLocated in a queit first-floor space, it features three immersive zones. \n\n\tMy Backyard, Outdoor Adventures, & Fields and Farms; where young visitors explore nature, seasons, and day-to-night changes!",
            imageName: "omwGal",
            url: "https://www.magiccitydiscoverycenter.com/outsidemywindow",
            funFact: "Did you know President Theodore Roosevelt was once a cattle rancher in North Dakota!",
            color: .mcdcGreen),
        
        GalleryItem(
            title: "Spark Lab",
            label: "spark",
            description: "Smithsonian SPark!Lab is a hands-on invention space where older children, families, and groups explore real-world problem solving through creativity, collaborations, and innovation.\n\n\tOne of only 11 in the nation, the Magic City Discovery Center's Spark!Lab empowers visitors to build 21st-century skills by bringing their own ideas to life!",
            imageName: "sparkGal",
            url: "https://www.magiccitydiscoverycenter.com/sparklabsmithsonian",
            funFact: "Did you know the first computer was as big as a room, but today, computers can fit in your pocket... like your iPhone!",
            color: .mcdcGreen),
        
        GalleryItem(
            title: "Pattern Place",
            label: "pattern",
            description: "This gallery explores the intersection of math, art, and science through patterns found in nature and daily life.\n\n\tVisitors engage in hands-on exhibits that encourage them to discover, analyze, and create patters; whch includes seeing themselves appear in a live Digital Mosaic!",
            imageName: "patternsGal",
            url: "https://www.magiccitydiscoverycenter.com/patternplace",
            funFact: "Did you know that many famous artworks are based on math patterns? The same spirals you see in seashells and flowers, called Fibonacci sequence, also show up in art and buildings!",
            color: .mcdcGreen),
        
        GalleryItem(
            title: "Magic Climber",
            label: "climber",
            description: "The magic Climber is a 37ft superstructure that allows children to climb through the prairie dog crawl, up the oil derrick, passing through the clouds until they finally reach the B-52 at the very top!\n\n\tThis is where they will have a 360-degree view of the Magic City. It's a STEAM adventure that challenges young minds with hands-on learning!",
            imageName: "climberGal",
            url: "https://www.magiccitydiscoverycenter.com/magicclimber",
            funFact: "B-52s can fly up to 700 mph which is considered Mach 0.9, almost the speed of sound!",
            color: .mcdcGreen)
    ]
    
    
    // level two galleries
    let L2Galleries: [GalleryItem] = [
        GalleryItem(
            title: "Digital Worlds",
            label: "digital",
            description: "The Digital Worlds gallery immerses visitors in interactive floor and wall experiences that blend illusion, color, and motion!\n\n\tThis open-ended space encourages creative expression for all ages through the fusion of art, technology, and learning!",
            imageName: "digitalGal",
            url: "https://www.magiccitydiscoverycenter.com/digitalworlds",
            funFact: "Did you know the bluish green color you can see on digital screens and does not exist in nature!",
            color: .mcdcOrange),
        
        GalleryItem(
            title: "Light Lab",
            label: "light",
            description: "The Light Lab gallery invites visitors of all ages to explore the beauty and science of light through hands-on experiences link bending light, using prisms, and creating aurora displays!\n\n\tPools of color and a dimly lit atmosphere create an engaging, mysterious space for authentic STEAM discovery!",
            imageName: "lightGal",
            url: "https://www.magiccitydiscoverycenter.com/lightlab",
            funFact: "Light is a beam of energy! It travels in wavelengths and is the only kind of energy that we can actually see with our eyes!",
            color: .mcdcOrange),
        
        GalleryItem(
            title: "Building",
            label: "building",
            description: "The Building Gallery is a hands-on construction zone where visitors explore the science and art behind architecture and design.\n\n\tThrough interactive exhibits, they engage with materials and concepts that highlight both the engineering and creativity in building structures worldwide!",
            imageName: "buildingGal",
            url: "https://www.magiccitydiscoverycenter.com/build",
            funFact: "Did you know that the strongest shape is a triangle!",
            color: .mcdcOrange),
        
        GalleryItem(
            title: "Sound Sensations",
            label: "sound",
            description: "The Sound Sensations Gallery invites visitors of all ages to explore the science of sound through hands-on music making activities!\n\nUsing instruments from around the world and digital tools, guests can visualize sound waves and feel vibrations ina fun, educational setting!",
            imageName: "soundGal",
            url: "https://www.magiccitydiscoverycenter.com/soundsensations",
            funFact: "Dogs can hear at a higher frequency than humans, allowing them to hear sounds that we cannot!",
            color: .mcdcOrange),
        
        GalleryItem(
            title: "Move",
            label: "move",
            description: "The Move Galleru introduces visitors to the fundamentals of physics through hands-on exploration of gravity, energy, velocity, and simple mechanics.\n\n\tGuests can build rollercoasters, play with Slinkys, and experiment with pulleys to see motion in action!",
            imageName: "moveGal",
            url: "https://www.magiccitydiscoverycenter.com/move",
            funFact: "Did you know the more pulleys you have in your pulley system will make an object even lighter as compared to having only one!",
            color: .mcdcOrange)
    ]
}
