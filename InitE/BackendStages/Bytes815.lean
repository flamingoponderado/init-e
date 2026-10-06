import InitE.BackendStages.Padded815
import InitE.BackendStages.BytesData815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes815_eq : (Padded815.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes815 := by
  with_unfolding_all rfl
#print axioms sectionBytes815_eq
end InitE.BackendStages
