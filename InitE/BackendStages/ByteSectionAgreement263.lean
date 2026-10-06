import InitE.BackendStages.BytesData263
import InitE.BackendStages.BytePiecesData263
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section263_eq : ByteData.bytes263 = [piece263_0].flatten := by
  rw [piece263_0_eq]
  rfl
#print axioms section263_eq
end InitE.BackendStages.BytePieces
