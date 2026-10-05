import InitE.BackendStages.Padded357
import InitE.BackendStages.BytesData357
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes357_eq : (Padded357.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes357 := by
  with_unfolding_all rfl
#print axioms sectionBytes357_eq
end InitE.BackendStages
