import InitE.BackendStages.BytesData114
import InitE.BackendStages.BytePiecesData114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section114_eq : ByteData.bytes114 = [piece114_0].flatten := by
  rw [piece114_0_eq]
  rfl
#print axioms section114_eq
end InitE.BackendStages.BytePieces
