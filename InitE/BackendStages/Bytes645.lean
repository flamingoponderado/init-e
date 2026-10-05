import InitE.BackendStages.Padded645
import InitE.BackendStages.BytesData645
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes645_eq : (Padded645.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes645 := by
  with_unfolding_all rfl
#print axioms sectionBytes645_eq
end InitE.BackendStages
