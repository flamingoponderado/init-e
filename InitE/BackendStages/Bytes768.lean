import InitE.BackendStages.Padded768
import InitE.BackendStages.BytesData768
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes768_eq : (Padded768.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes768 := by
  with_unfolding_all rfl
#print axioms sectionBytes768_eq
end InitE.BackendStages
