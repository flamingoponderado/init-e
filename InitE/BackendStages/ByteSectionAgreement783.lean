import InitE.BackendStages.BytesData783
import InitE.BackendStages.BytePiecesData783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section783_eq : ByteData.bytes783 = [piece783_0, piece783_1, piece783_2, piece783_3].flatten := by
  rw [piece783_0_eq, piece783_1_eq, piece783_2_eq, piece783_3_eq]
  rfl
#print axioms section783_eq
end InitE.BackendStages.BytePieces
