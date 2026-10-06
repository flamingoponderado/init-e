import InitE.BackendStages.BytesData280
import InitE.BackendStages.BytePiecesData280
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section280_eq : ByteData.bytes280 = [piece280_0, piece280_1].flatten := by
  rw [piece280_0_eq, piece280_1_eq]
  rfl
#print axioms section280_eq
end InitE.BackendStages.BytePieces
