import InitE.BackendStages.Padded186
import InitE.BackendStages.BytesData186
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes186_eq : (Padded186.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes186 := by
  with_unfolding_all rfl
#print axioms sectionBytes186_eq
end InitE.BackendStages
