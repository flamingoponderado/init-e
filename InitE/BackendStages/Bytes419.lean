import InitE.BackendStages.Padded419
import InitE.BackendStages.BytesData419
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes419_eq : (Padded419.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes419 := by
  with_unfolding_all rfl
#print axioms sectionBytes419_eq
end InitE.BackendStages
