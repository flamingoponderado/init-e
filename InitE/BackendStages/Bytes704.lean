import InitE.BackendStages.Padded704
import InitE.BackendStages.BytesData704
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes704_eq : (Padded704.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes704 := by
  with_unfolding_all rfl
#print axioms sectionBytes704_eq
end InitE.BackendStages
