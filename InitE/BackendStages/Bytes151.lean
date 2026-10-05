import InitE.BackendStages.Padded151
import InitE.BackendStages.BytesData151
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes151_eq : (Padded151.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes151 := by
  with_unfolding_all rfl
#print axioms sectionBytes151_eq
end InitE.BackendStages
