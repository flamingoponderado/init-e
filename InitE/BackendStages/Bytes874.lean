import InitE.BackendStages.Padded874
import InitE.BackendStages.BytesData874
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes874_eq : (Padded874.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes874 := by
  with_unfolding_all rfl
#print axioms sectionBytes874_eq
end InitE.BackendStages
