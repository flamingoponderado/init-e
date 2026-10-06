import InitE.BackendStages.Padded376
import InitE.BackendStages.BytesData376
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes376_eq : (Padded376.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes376 := by
  with_unfolding_all rfl
#print axioms sectionBytes376_eq
end InitE.BackendStages
