import InitE.BackendStages.Padded735
import InitE.BackendStages.BytesData735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes735_eq : (Padded735.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes735 := by
  with_unfolding_all rfl
#print axioms sectionBytes735_eq
end InitE.BackendStages
