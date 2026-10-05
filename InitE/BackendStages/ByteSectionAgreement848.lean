import InitE.BackendStages.BytesData848
import InitE.BackendStages.BytePiecesData848
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section848_eq : ByteData.bytes848 = [piece848_0, piece848_1].flatten := by
  rw [piece848_0_eq, piece848_1_eq]
  rfl
#print axioms section848_eq
end InitE.BackendStages.BytePieces
