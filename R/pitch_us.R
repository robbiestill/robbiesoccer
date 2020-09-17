pitch_us <- function(filler = "#2f4f4f"){list(#half pitch
#right touchline
annotate("segment",x = 0.6, xend = 1, y = 0, yend = 0, colour = filler, 
         size = 0.6) ,
  #left touchline
  annotate("segment",x = 0.6, xend = 1, y = 1, yend = 1, colour = filler, 
           size = 0.6) ,
  #goal line
  annotate("segment", x = 1, xend = 1, y = 0, yend = 1, colour = filler,
           size = 0.6),
  #penalty area
  annotate("rect",xmin = 0.83, xmax = 1, ymin = 0.207, ymax = 0.797, fill = NA,
           colour = filler, size = 0.6) ,
  #six yard box
  annotate("rect",xmin = 1, xmax = 0.944, ymin = 0.643, ymax = 0.351, fill = NA,
           colour =  filler, size = 0.6) ,
  #goal
  annotate("rect",xmin = 1, xmax = 1.01, ymin =0.563, ymax = 0.439, fill = NA,
           colour = filler, size = 0.6) ,
  theme(rect = element_blank(),
        line = element_blank()) ,
  annotate("point", x = 0.885 , y = 0.500, colour = filler, size = 1.05) ,
  annotate("path", x=0.885-0.091*cos(seq(-0.295*pi,0.295*pi,length.out=30)), 
           size = 0.6,
           y=0.498+0.116*sin(seq(-0.3*pi,0.3*pi,length.out=30)), col=filler) ,
  coord_flip(), 
  xlim(0.6, 1.01),
  ylim(1,0),
  theme(axis.line = element_blank(), 
        axis.text = element_blank(), 
        axis.title = element_blank()))
  }

