//
//  ParseJSON.swift
//  CardTrap
//
//  Created by Colby Beach on 10/4/21.
//

import Foundation

public var backgrounds = ["homescreen1" : "backgroundImage1", "homeScreen2" : "backgroundImage2", "homeScreen3": "backgroundImage3"]



public var cardBacks = ["bikeBlue": "https://i.pinimg.com/originals/e8/48/61/e84861e08067effa4557be98cf5a7596.jpg",
                        "bikeRed": "https://i.pinimg.com/originals/8e/85/d9/8e85d9446961086853d8f6b7821f44d4.jpg",
                        "autoBikeBlue": "https://i.pinimg.com/736x/5f/e8/b6/5fe8b6b8112cdc70bdc40bef5334ba7d.jpg"]

public var cards = [ "AC" : "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/English_pattern_ace_of_clubs.svg/1200px-English_pattern_ace_of_clubs.svg.png",
              "2C" : "https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/74924/two-of-clubs-clipart-md.png",
              "3C" : "https://ih1.redbubble.net/image.657486474.1025/flat,750x,075,f-pad,750x1000,f8f8f8.u3.jpg",
              "4C" : "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Playing_card_club_4.svg/819px-Playing_card_club_4.svg.png",
              "5C" : "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Playing_card_club_5.svg/1200px-Playing_card_club_5.svg.png",
              "6C" : "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Playing_card_club_6.svg/1200px-Playing_card_club_6.svg.png",
              "7C" : "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Playing_card_club_7.svg/1200px-Playing_card_club_7.svg.png",
              "8C" : "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Playing_card_club_8.svg/1200px-Playing_card_club_8.svg.png",
              "9C" : "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Playing_card_club_9.svg/819px-Playing_card_club_9.svg.png",
              "TC" : "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Playing_card_club_10.svg/1200px-Playing_card_club_10.svg.png",
              "JC" : "https://openclipart.org/image/800px/192930",
              "QC" : "https://www.colourbox.com/preview/10382975-queen-of-clubs.jpg",
              "KC" : "https://upload.wikimedia.org/wikipedia/commons/2/25/Poker-sm-242-Kc.png",
              "AS" : "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/01_of_spades_A.svg/1200px-01_of_spades_A.svg.png",
              "2S" : "https://ih1.redbubble.net/image.657499455.1388/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg",
              "3S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/3_of_spades.svg/1200px-3_of_spades.svg.png",
              "4S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Playing_card_spade_4.svg/1200px-Playing_card_spade_4.svg.png",
              "5S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Playing_card_spade_5.svg/1200px-Playing_card_spade_5.svg.png",
              "6S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Playing_card_spade_6.svg/1200px-Playing_card_spade_6.svg.png",
              "7S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/7_of_spades.svg/1200px-7_of_spades.svg.png",
              "8S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Playing_card_spade_8.svg/1200px-Playing_card_spade_8.svg.png",
              "9S" : "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Playing_card_spade_9.svg/1200px-Playing_card_spade_9.svg.png",
              "TS" : "https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Playing_card_spade_10.svg/1200px-Playing_card_spade_10.svg.png",
              "JS" : "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/English_pattern_jack_of_spades.svg/360px-English_pattern_jack_of_spades.svg.png",
              "QS" : "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/51_Q_di_picche.jpg/1200px-51_Q_di_picche.jpg",
              "KS" : "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/English_pattern_king_of_spades.svg/1200px-English_pattern_king_of_spades.svg.png",
              "AH" : "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Playing_card_heart_A.svg/1200px-Playing_card_heart_A.svg.png",
              "2H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/2_of_hearts.svg/1200px-2_of_hearts.svg.png",
              "3H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Playing_card_heart_3.svg/1200px-Playing_card_heart_3.svg.png",
              "4H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/4_of_hearts.svg/1200px-4_of_hearts.svg.png",
              "5H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Playing_card_heart_5.svg/1200px-Playing_card_heart_5.svg.png",
              "6H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Playing_card_heart_6.svg/1200px-Playing_card_heart_6.svg.png",
              "7H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/7_of_hearts.svg/1200px-7_of_hearts.svg.png",
              "8H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/8_of_hearts.svg/1200px-8_of_hearts.svg.png",
              "9H" : "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/9_of_hearts.svg/1200px-9_of_hearts.svg.png",
              "TH" : "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Playing_card_heart_10.svg/1200px-Playing_card_heart_10.svg.png",
              "JH" : "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/English_pattern_jack_of_hearts.svg/1200px-English_pattern_jack_of_hearts.svg.png",
              "QH" : "https://media.istockphoto.com/vectors/queen-of-hearts-two-playing-card-vector-id165528945?k=20&m=165528945&s=612x612&w=0&h=spZqxsSs3uCRFaiXSC_peGpJZT7o_rDXW21_m6zuQbs=",
              "KH" : "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/English_pattern_king_of_hearts.svg/1200px-English_pattern_king_of_hearts.svg.png",
              "AD" : "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Playing_card_diamond_A.svg/1200px-Playing_card_diamond_A.svg.png",
              "2D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Playing_card_diamond_2.svg/819px-Playing_card_diamond_2.svg.png",
              "3D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Playing_card_diamond_3.svg/1200px-Playing_card_diamond_3.svg.png",
              "4D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Playing_card_diamond_4.svg/819px-Playing_card_diamond_4.svg.png",
              "5D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/5_of_diamonds.svg/706px-5_of_diamonds.svg.png",
              "6D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/6_of_diamonds.svg/706px-6_of_diamonds.svg.png",
              "7D" : "https://f3carpex.com/wp-content/uploads/2019/02/2000px-Playing_card_diamond_7.svg_.png",
              "8D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Playing_card_diamond_8.svg/1200px-Playing_card_diamond_8.svg.png",
              "9D" : "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Playing_card_diamond_9.svg/1200px-Playing_card_diamond_9.svg.png",
              "TD" : "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Playing_card_diamond_10.svg/1200px-Playing_card_diamond_10.svg.png",
              "JD" : "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/English_pattern_jack_of_diamonds.svg/1200px-English_pattern_jack_of_diamonds.svg.png",
              "QD" : "https://i.pinimg.com/originals/2d/e2/29/2de229c977c617b21b158f95c3fa288e.png",
              "KD" : "https://images-na.ssl-images-amazon.com/images/I/71EkglvyWjL.jpg"];
