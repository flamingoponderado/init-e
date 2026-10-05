import InitE.BackendStages.Padded134
import InitE.BackendStages.BytesData134
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes134_eq : (Padded134.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes134 := by
  with_unfolding_all rfl
#print axioms sectionBytes134_eq
end InitE.BackendStages
