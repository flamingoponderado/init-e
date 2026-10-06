import InitE.BackendStages.BytesData652
import InitE.BackendStages.BytePiecesData652
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section652_eq : ByteData.bytes652 = [piece652_0, piece652_1, piece652_2].flatten := by
  rw [piece652_0_eq, piece652_1_eq, piece652_2_eq]
  rfl
#print axioms section652_eq
end InitE.BackendStages.BytePieces
