import InitE.BackendStages.Padded839
import InitE.BackendStages.BytesData839
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes839_eq : (Padded839.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes839 := by
  with_unfolding_all rfl
#print axioms sectionBytes839_eq
end InitE.BackendStages
