import InitE.BackendStages.Padded435
import InitE.BackendStages.BytesData435
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes435_eq : (Padded435.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes435 := by
  with_unfolding_all rfl
#print axioms sectionBytes435_eq
end InitE.BackendStages
