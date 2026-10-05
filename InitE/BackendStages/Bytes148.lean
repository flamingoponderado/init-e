import InitE.BackendStages.Padded148
import InitE.BackendStages.BytesData148
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes148_eq : (Padded148.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes148 := by
  with_unfolding_all rfl
#print axioms sectionBytes148_eq
end InitE.BackendStages
