import InitE.BackendStages.Padded865
import InitE.BackendStages.BytesData865
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes865_eq : (Padded865.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes865 := by
  with_unfolding_all rfl
#print axioms sectionBytes865_eq
end InitE.BackendStages
