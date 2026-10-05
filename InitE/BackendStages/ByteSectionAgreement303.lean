import InitE.BackendStages.BytesData303
import InitE.BackendStages.BytePiecesData303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section303_eq : ByteData.bytes303 = [piece303_0, piece303_1].flatten := by
  rw [piece303_0_eq, piece303_1_eq]
  rfl
#print axioms section303_eq
end InitE.BackendStages.BytePieces
