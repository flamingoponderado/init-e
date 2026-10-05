import InitE.BackendStages.Padded159
import InitE.BackendStages.BytesData159
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes159_eq : (Padded159.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes159 := by
  with_unfolding_all rfl
#print axioms sectionBytes159_eq
end InitE.BackendStages
