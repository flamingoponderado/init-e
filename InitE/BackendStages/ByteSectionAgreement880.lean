import InitE.BackendStages.BytesData880
import InitE.BackendStages.BytePiecesData880
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section880_eq : ByteData.bytes880 = [piece880_0, piece880_1].flatten := by
  rw [piece880_0_eq, piece880_1_eq]
  rfl
#print axioms section880_eq
end InitE.BackendStages.BytePieces
