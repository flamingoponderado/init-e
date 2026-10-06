import InitE.BackendStages.Padded449
import InitE.BackendStages.BytesData449
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes449_eq : (Padded449.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes449 := by
  with_unfolding_all rfl
#print axioms sectionBytes449_eq
end InitE.BackendStages
