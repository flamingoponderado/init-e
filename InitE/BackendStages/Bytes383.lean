import InitE.BackendStages.Padded383
import InitE.BackendStages.BytesData383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes383_eq : (Padded383.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes383 := by
  with_unfolding_all rfl
#print axioms sectionBytes383_eq
end InitE.BackendStages
