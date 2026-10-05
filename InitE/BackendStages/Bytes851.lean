import InitE.BackendStages.Padded851
import InitE.BackendStages.BytesData851
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes851_eq : (Padded851.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes851 := by
  with_unfolding_all rfl
#print axioms sectionBytes851_eq
end InitE.BackendStages
