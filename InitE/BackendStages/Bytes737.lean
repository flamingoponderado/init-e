import InitE.BackendStages.Padded737
import InitE.BackendStages.BytesData737
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes737_eq : (Padded737.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes737 := by
  with_unfolding_all rfl
#print axioms sectionBytes737_eq
end InitE.BackendStages
