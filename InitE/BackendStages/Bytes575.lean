import InitE.BackendStages.Padded575
import InitE.BackendStages.BytesData575
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes575_eq : (Padded575.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes575 := by
  with_unfolding_all rfl
#print axioms sectionBytes575_eq
end InitE.BackendStages
