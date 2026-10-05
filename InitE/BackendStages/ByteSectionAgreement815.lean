import InitE.BackendStages.BytesData815
import InitE.BackendStages.BytePiecesData815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section815_eq : ByteData.bytes815 = [piece815_0, piece815_1].flatten := by
  rw [piece815_0_eq, piece815_1_eq]
  rfl
#print axioms section815_eq
end InitE.BackendStages.BytePieces
