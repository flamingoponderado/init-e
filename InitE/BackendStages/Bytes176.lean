import InitE.BackendStages.Padded176
import InitE.BackendStages.BytesData176
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes176_eq : (Padded176.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes176 := by
  with_unfolding_all rfl
#print axioms sectionBytes176_eq
end InitE.BackendStages
