import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StopwatchPage(),
    );
  }
}

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({Key? key}) : super(key: key);

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  late final Stopwatch _stopwatch;
  late final Ticker _ticker;
  Duration _elapsed = Duration.zero;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _ticker = Ticker(_onTick);
  }

  void _onTick(Duration duration) {
    if (_stopwatch.isRunning) {
      setState(() {
        _elapsed = _stopwatch.elapsed;
      });
    }
  }

  void _start() {
    _stopwatch.start();
    _ticker.start();
    setState(() {});
  }

  void _pause() {
    _stopwatch.stop();
    _ticker.stop();
    setState(() {});
  }

  void _reset() {
    _stopwatch.reset();
    _elapsed = Duration.zero;
    setState(() {});
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  String _formatTime(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    final milliseconds = (d.inMilliseconds.remainder(1000) ~/ 10)
        .toString()
        .padLeft(2, '0');
    return "$minutes:$seconds:$milliseconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Stopwatch'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _formatTime(_elapsed),
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MUIPrimaryButton(
                  text: _stopwatch.isRunning ? 'Pause' : 'Start',
                  onPressed: _stopwatch.isRunning ? _pause : _start,
                ),
                const SizedBox(width: 20),
                MUISecondaryButton(text: 'Reset', onPressed: _reset),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Ticker {
  Ticker(this.onTick);
  final void Function(Duration) onTick;
  bool _isActive = false;
  Duration _elapsed = Duration.zero;

  void start() {
    if (_isActive) return;
    _isActive = true;
    _tick();
  }

  void stop() {
    _isActive = false;
  }

  void dispose() {
    _isActive = false;
  }

  void _tick() async {
    while (_isActive) {
      await Future.delayed(const Duration(milliseconds: 30));
      _elapsed += const Duration(milliseconds: 30);
      onTick(_elapsed);
    }
  }
}
