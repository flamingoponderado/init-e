import InitE.BackendStages.BytesData258
import InitE.BackendStages.BytePiecesData258
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section258_eq : ByteData.bytes258 = [piece258_0, piece258_1].flatten := by
  rw [piece258_0_eq, piece258_1_eq]
  rfl
#print axioms section258_eq
end InitE.BackendStages.BytePieces
