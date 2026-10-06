import InitE.BackendStages.BytesData762
import InitE.BackendStages.BytePiecesData762
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section762_eq : ByteData.bytes762 = [piece762_0].flatten := by
  rw [piece762_0_eq]
  rfl
#print axioms section762_eq
end InitE.BackendStages.BytePieces
