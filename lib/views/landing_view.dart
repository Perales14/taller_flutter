import '../controllers/note_controller.dart';
import 'package:flutter/material.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Contenido principal
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                //arriba a abajo
                mainAxisAlignment: MainAxisAlignment.start,
                //de izquierda a derecha
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Side Hustle',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(width: 20),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                      ),
                      const Spacer(),
                      const Icon(
                        //icono de un link
                        Icons.link,
                        size: 30,
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Shasre',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 20),
                      //icono de 3 puntos acostado
                      const Icon(
                        Icons.more_horiz,
                        size: 30,
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    // width: isOpen ? 210 : 60,
                    height: isOpen ? 120 : 40,
                    foregroundDecoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Transform.rotate(
                          angle: 90 * 3.1415927 / 180,
                          child: IconButton(
                            icon: Icon(
                                isOpen
                                    ? Icons.settings_backup_restore_sharp
                                    : Icons.menu_open_rounded,
                                size: 30),
                            onPressed: () {
                              setState(() {
                                isOpen = !isOpen;
                              });
                              print('saludos');
                              // NoteController().getNotes();
                            },
                          ),
                        ),
                        const SizedBox(height: 40),
                        _buildMenuItem(
                          Icons.book,
                          "Projects",
                        ),
                        const SizedBox(height: 20),
                        _buildMenuItem(
                          Icons.book,
                          "Projects",
                        ),
                        _buildMenuItem(
                          Icons.edit_note_rounded,
                          "Drafts",
                        ),
                        _buildMenuItem(
                          Icons.switch_access_shortcut_add_rounded,
                          "Shared with me",
                        ),
                        const Spacer(),
                        _buildMenuItem(
                          Icons.settings,
                          "Settings",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para los elementos del menú
  Widget _buildMenuItem(IconData icon, String title) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 60,
          // width: isOpen ? 210 : 60,
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Icon(icon, color: Colors.grey[800], size: 24),
              ),
              if (isOpen) ...[
                const SizedBox(height: 10), // Espacio entre icono y texto
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
