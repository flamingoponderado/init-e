import InitE.BootstrapMemory
import InitE.MachineWordMemory

namespace InitE
open Flapjack

def bitmapBytes : List (BitVec 8) :=
  (List.range (8*InitECandidate.bitmaps.length)).map fun offset =>
    wordByte (InitECandidate.bitmaps[offset/8]?.getD 0) (offset%8)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem bitmap_image_bytes :
    (InitECandidate.code.drop (initDataRom-initialPc+24)).take
      (8*InitECandidate.bitmaps.length) = bitmapBytes := by native_decide

theorem submitted_image_size : InitECandidate.code.length = 950336 := by native_decide

theorem bitmap_count : InitECandidate.bitmaps.length = 4613 := by native_decide

theorem bitmapBytes_length : bitmapBytes.length = 8*InitECandidate.bitmaps.length := by
  simp [bitmapBytes]

end InitE
