import InitE.BackendStages.Padded452
import InitE.BackendStages.BytesData452
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes452_eq : (Padded452.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes452 := by
  with_unfolding_all rfl
#print axioms sectionBytes452_eq
end InitE.BackendStages
