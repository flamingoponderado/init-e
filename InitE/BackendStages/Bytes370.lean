import InitE.BackendStages.Padded370
import InitE.BackendStages.BytesData370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes370_eq : (Padded370.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes370 := by
  with_unfolding_all rfl
#print axioms sectionBytes370_eq
end InitE.BackendStages
