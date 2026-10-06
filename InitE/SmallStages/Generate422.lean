import Tools.GenSmallStages
import InitE.SmallStages.Oracles422
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 422 InitE.WordStages.source422.2.1 InitE.WordStages.source422.2.2 InitE.SmallStages.Oracles422.oracle422
