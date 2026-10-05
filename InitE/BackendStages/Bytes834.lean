import InitE.BackendStages.Padded834
import InitE.BackendStages.BytesData834
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes834_eq : (Padded834.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes834 := by
  with_unfolding_all rfl
#print axioms sectionBytes834_eq
end InitE.BackendStages
