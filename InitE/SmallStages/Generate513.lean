import Tools.GenSmallStages
import InitE.SmallStages.Oracles513
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 513 InitE.WordStages.source513.2.1 InitE.WordStages.source513.2.2 InitE.SmallStages.Oracles513.oracle513
