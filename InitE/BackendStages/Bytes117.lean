import InitE.BackendStages.Padded117
import InitE.BackendStages.BytesData117
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages
theorem sectionBytes117_eq : (Padded117.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes117 := by
  with_unfolding_all rfl
#print axioms sectionBytes117_eq
end InitE.BackendStages
