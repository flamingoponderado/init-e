import InitE.BackendStages.Padded793
import InitE.BackendStages.BytesData793
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes793_eq : (Padded793.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes793 := by
  with_unfolding_all rfl
#print axioms sectionBytes793_eq
end InitE.BackendStages
