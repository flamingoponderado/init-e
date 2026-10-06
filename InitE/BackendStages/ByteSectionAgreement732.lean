import InitE.BackendStages.BytesData732
import InitE.BackendStages.BytePiecesData732
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section732_eq : ByteData.bytes732 = [piece732_0].flatten := by
  rw [piece732_0_eq]
  rfl
#print axioms section732_eq
end InitE.BackendStages.BytePieces
