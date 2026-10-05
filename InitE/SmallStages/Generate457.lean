import Tools.GenSmallStages
import InitE.SmallStages.Oracles457
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 457 InitE.WordStages.source457.2.1 InitE.WordStages.source457.2.2 InitE.SmallStages.Oracles457.oracle457
