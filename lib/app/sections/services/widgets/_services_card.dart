part of '../services.dart';

class _ServiceCard extends StatefulWidget {
  final ServicesUtils service;

  

  const _ServiceCard({Key? key, required this.service}) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;
  

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
          width: Responsive.isTablet(context) ? 400 : 300,
          // height: AppDimensions.normalize(100),
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.transparent,
                    ],
                  ),
                  border: Border.all(width: 0.5, color: Colors.white),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      widget.service.icon,
                      height: 60,
                    ),
                    Space.y(3.w)!,
                    Text(widget.service.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isHover ? whiteColor : theme.textColor,
                        )),
                    Space.y(1.w)!,
                    Text(
                      widget.service.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 13,
                      ),
                    ),
                  Space.y(2.w)!,
                  if (Responsive.isDesktop(context))
                    _buildDesktopToolsList(context, theme),
                  if (Responsive.isMobile(context) || Responsive.isTablet(context))
                    _buildMobileTabletToolsList(context, theme),
                ],
              ),
            ),
          ),
      ),
    );
  }

  Widget _buildDesktopToolsList(BuildContext context, ThemeData theme) {
    return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widget.service.tool
                      .map((e) => Row(
                            children: [
                              const Text('🛠   '),
                              Text(e,
                                  style: TextStyle(
                                    color:
                                        isHover ? whiteColor : theme.textColor,
                                  )),
                            ],))
                      .toList()),
            );
  }
  
  Widget _buildMobileTabletToolsList(BuildContext context, ThemeData theme) {
    return Expanded(
      child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: widget.service.tool
              .map((e) => Row(
                    children: [
                      const Text('🛠   '),
                      Text(e,
                          style: TextStyle(
                            color: isHover
                                ? whiteColor
                                : theme.textColor,
                          )),
                    ],
                  ))
              .toList()),
    );
  }
}
