import InitE.BackendStages.Padded100
import InitE.BackendStages.BytesData100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes100_eq : (Padded100.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes100 := by
  with_unfolding_all rfl
#print axioms sectionBytes100_eq
end InitE.BackendStages
