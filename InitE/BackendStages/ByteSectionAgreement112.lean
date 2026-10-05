import InitE.BackendStages.BytesData112
import InitE.BackendStages.BytePiecesData112
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section112_eq : ByteData.bytes112 = [piece112_0].flatten := by
  rw [piece112_0_eq]
  rfl
#print axioms section112_eq
end InitE.BackendStages.BytePieces
