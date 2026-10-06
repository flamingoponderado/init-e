import InitE.BackendStages.Padded292
import InitE.BackendStages.BytesData292
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes292_eq : (Padded292.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes292 := by
  with_unfolding_all rfl
#print axioms sectionBytes292_eq
end InitE.BackendStages
