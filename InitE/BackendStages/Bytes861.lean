import InitE.BackendStages.Padded861
import InitE.BackendStages.BytesData861
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes861_eq : (Padded861.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes861 := by
  with_unfolding_all rfl
#print axioms sectionBytes861_eq
end InitE.BackendStages
