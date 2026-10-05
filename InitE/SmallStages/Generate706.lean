import Tools.GenSmallStages
import InitE.SmallStages.Oracles706
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 706 InitE.WordStages.source706.2.1 InitE.WordStages.source706.2.2 InitE.SmallStages.Oracles706.oracle706
