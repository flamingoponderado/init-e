import InitE.BackendStages.Padded862
import InitE.BackendStages.BytesData862
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes862_eq : (Padded862.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes862 := by
  with_unfolding_all rfl
#print axioms sectionBytes862_eq
end InitE.BackendStages
