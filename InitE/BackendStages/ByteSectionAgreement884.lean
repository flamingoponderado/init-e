import InitE.BackendStages.BytesData884
import InitE.BackendStages.BytePiecesData884
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section884_eq : ByteData.bytes884 = [piece884_0].flatten := by
  rw [piece884_0_eq]
  rfl
#print axioms section884_eq
end InitE.BackendStages.BytePieces
