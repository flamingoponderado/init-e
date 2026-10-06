import InitE.BackendStages.Padded427
import InitE.BackendStages.BytesData427
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes427_eq : (Padded427.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes427 := by
  with_unfolding_all rfl
#print axioms sectionBytes427_eq
end InitE.BackendStages
