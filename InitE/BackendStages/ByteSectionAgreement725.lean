import InitE.BackendStages.BytesData725
import InitE.BackendStages.BytePiecesData725
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section725_eq : ByteData.bytes725 = [piece725_0].flatten := by
  rw [piece725_0_eq]
  rfl
#print axioms section725_eq
end InitE.BackendStages.BytePieces
