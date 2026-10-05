import InitE.BackendStages.BytesData240
import InitE.BackendStages.BytePiecesData240
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section240_eq : ByteData.bytes240 = [piece240_0, piece240_1, piece240_2, piece240_3].flatten := by
  rw [piece240_0_eq, piece240_1_eq, piece240_2_eq, piece240_3_eq]
  rfl
#print axioms section240_eq
end InitE.BackendStages.BytePieces
